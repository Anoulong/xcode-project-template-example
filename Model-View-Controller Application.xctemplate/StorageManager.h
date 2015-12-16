//
// StorageManager.h
//

#import <UIKit/UIKit.h>

@interface StorageManager : NSObject

@property (nonatomic) NSUserDefaults *userDefaults;
@property (nonatomic) NSString *documentsPath;


+ (id)getInstance;
+ (NSUserDefaults*)userDefaults;

+ (void)storeObject:(id)object forKey:(NSString*)key;
+ (id)objectForKey:(NSString*)key;
+ (void)deleteObjectForKey:(NSString*)key;
+ (void)deleteObjectsForKeys:(NSArray*)keys;

+ (BOOL)saveImage:(UIImage*)image withName:(NSString*)imageName;
+ (BOOL)saveData:(NSData*)data withName:(NSString*)name;
+ (UIImage*)loadImagedNamed:(NSString*)imageName;
+ (BOOL)removeImageNamed:(NSString*)imageName;

@end
