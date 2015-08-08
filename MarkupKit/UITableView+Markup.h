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

#import <UIKit/UIKit.h>

@interface UITableView (Markup)

/**
 * Creates a plain table view.
 */
+ (UITableView *)plainTableView;

/**
 * Creates a grouped table view.
 */
+ (UITableView *)groupedTableView;

/**
 * Returns the name of a section.
 *
 * @param section The section index.
 *
 * @return The section's name.
 */
- (NSString *)nameForSection:(NSInteger)section;

/**
 * Returns the index of the section whose name matches the given name.
 *
 * @param name The section name.
 *
 * @return The section index, or <code>NSNotFound</code> if a matching section was not found.
 */
- (NSInteger)sectionWithName:(NSString *)name;

/**
 * Returns the index of the row in the given section whose cell value matches the given value.
 *
 * @param value The cell value.
 * @param section The section index.
 * 
 * @return The row index, or <code>NSNotFound</code> if a matching row was not found.
 */
- (NSInteger)rowForCellWithValue:(id)value inSection:(NSInteger)section;

@end
