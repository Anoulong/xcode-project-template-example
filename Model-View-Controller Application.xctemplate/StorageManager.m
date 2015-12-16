//
// StorageManager.m
//

#import "StorageManager.h"

static StorageManager *storageManager = nil;

@interface StorageManager ()


@end

@implementation StorageManager

- (instancetype)init {
    if(self = [super init]) {
        _userDefaults = [NSUserDefaults standardUserDefaults];
        
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        _documentsPath = [paths objectAtIndex:0];
        
    }
    return self;
}

+ (id)getInstance {
    @synchronized(self) {
        if (storageManager == nil)
            storageManager = [[self alloc] init];
    }
    return storageManager;
}

+ (NSUserDefaults*)userDefaults {
    return [[StorageManager getInstance] userDefaults];
}

+ (void)storeObject:(id)object forKey:(NSString*)key {
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:object];
    [[StorageManager userDefaults] setObject:data forKey:key];
    [[StorageManager userDefaults] synchronize];
}

+ (id)objectForKey:(NSString*)key {
    NSData *data = [[StorageManager userDefaults] objectForKey:key];
    return [NSKeyedUnarchiver unarchiveObjectWithData:data];
}

+ (void)deleteObjectForKey:(NSString*)key {
    [[StorageManager userDefaults] removeObjectForKey:key];
    [[StorageManager userDefaults] synchronize];
}

+ (void)deleteObjectsForKeys:(NSArray*)keys {
    for (NSString *key in keys) {
        [[StorageManager userDefaults] removeObjectForKey:key];
    }
    [[StorageManager userDefaults] synchronize];
}

+ (BOOL)saveImage:(UIImage*)image withName:(NSString*)imageName {
    
    //make UIImage a PNG data representation
    NSData *data = UIImagePNGRepresentation(image);
    
   return [StorageManager saveData:data withName:imageName];
    
}

+ (BOOL)saveData:(NSData*)data withName:(NSString*)name {

    //save image to disk
    NSString *filePath = [[[StorageManager getInstance] documentsPath] stringByAppendingPathComponent:name];
    
    //Write the file
    return [data writeToFile:filePath atomically:YES];

}


+ (UIImage*)loadImagedNamed:(NSString*)imageName {
    NSString *filePath = [[[StorageManager getInstance] documentsPath] stringByAppendingPathComponent:imageName];
    return [UIImage imageWithContentsOfFile:filePath];
}

+ (BOOL)removeImageNamed:(NSString*)imageName {
    NSString *filePath = [[[StorageManager getInstance] documentsPath] stringByAppendingPathComponent:imageName];
    return [[NSFileManager defaultManager] removeItemAtPath:filePath error:nil];
}

@end
