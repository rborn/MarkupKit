//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

#import "UIPickerView+Markup.h"

@implementation UIPickerView (Markup)

- (NSString *)nameForComponent:(NSInteger)component
{
    return nil;
}

- (NSInteger)componentWithName:(NSString *)name
{
    NSInteger component = 0, n = [self numberOfComponents];

    while (component < n) {
        if ([[self nameForComponent:component] isEqual:name]) {
            break;
        }

        component++;
    }

    return (component < n) ? component : NSNotFound;
}

- (NSString *)titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return nil;
}

- (id)valueForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return nil;
}

- (NSInteger)rowWithValue:(id)value inComponent:(NSInteger)component
{
    NSInteger row = 0, n = [self numberOfRowsInComponent:component];

    while (row < n) {
        if ([value isEqual:[self valueForRow:row forComponent:component]]) {
            break;
        }

        row++;
    }

    return (row < n) ? row : NSNotFound;
}

@end
