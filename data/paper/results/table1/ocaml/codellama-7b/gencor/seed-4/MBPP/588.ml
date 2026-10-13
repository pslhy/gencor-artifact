
let rec big_diff (nums : int list) : int = 
    match nums with 
      head :: tail -> 
          (match tail with 
          |[] -> head 
          | xs -> big_diff (xs)) - head 
       |[] -> 0 

exception NotFound of string
fun_ find (* Item 1* 

This is a list item

* Item 2

This is another list item

1. Item 1

This is an ordered list item

2. Item 2

This is another ordered list item
---

Here is a footnote reference,[^1] and another.[^longnote]

[^1]: Here is the footnote.

[^longnote]: Here's one with several blocks.
```
**Bold text**

__Bold text__

Here is an image:

![Image of Yaktocat](https://octodex.github.com/images/yaktocat.png)

Here is an inline code:

Here is an inline code: `conspiracy_theory_is_probably_real` v`qy_{Ek}`F_out`-l`[P](S)qselect(_`:s_\`bernoulli8)$

Here is an unordered list.

- Item 1

Here is another item in an unordered list

- Item 2

An ordered list follows.

1. Item 1

2. Item 2

Here is a task list, where things that are done are checked off with [x]

- [x] Write the press release

- [ ] Update the website

- [ ] Contact the media

```
Diagonal star triangle

       *
      ***
     *****
    *******
```

Here is a C# indented block

```csharp
// C# code goes here
```

Here is a Lua indented block

```lua
-- Lua code goes here
```

Here is a Java indented block

```java
// Java code goes here
```

Here is a C++ indented block

```cpp
// C++ code goes here
```

Here is a C indented block

```c
// C code goes here
```

Here is a Python indented block

```python
# Python code goes here
```

Here is a Ruby indented block

```ruby
# Ruby code goes here
```

Here is a Swift indented block

```swift
// Swift code goes here
```

Here is a Markdown indented block

```markdown
# Markdown code goes here
```

Here is an AsciiDoc indented block

```asciidoc
// AsciiDoc code goes here
```

Here is a Perl indented block

```perl
# Perl code goes here
```

Here is an R indented block

```r
# R code goes here
```

Here is a JavaScript indented block

```js
// JavaScript code goes here
```

Here is an HTML/XML indented block

```html
<!-- HTML/XML code goes here -->
```

Here is a CSS indented block

```css
/* CSS code goes here */
```

Here is a Shell indented block

```shell
# Shell code goes here
```

Here is a PowerShell indented block

```powershell
# PowerShell code goes here
```

Here is a VBScript indented block

```vbscript
' VBScript code goes here
```

Here is a TypeScript indented block

```typescript
// TypeScript code goes here
```

Here is a Groovy indented block

```groovy
// Groovy code goes here
```

Here is a Go indented block

```go
// Go code goes here
```

Here is an SQL indented block

```sql
-- SQL code goes here
```

Here is a VB.Net indented block

```vb.net
' VB.Net code goes here
```

Here is a Bash indented block

```bash
# Bash code goes here
```

Here is an Objective-C indented block

```objective-c
// Objective-C code goes here
```

Here is a Swift indented block

```swift
// Swift code goes here
```

Here is a Ruby on Rails indented block

```rubyonrails
# Ruby on Rails code goes here
```

Here is a PHP indented block

```php
# PHP code goes here
```

Here is a Python console indented block

```python_console
# Python console code goes here
```

Here is a Java console indented block

```java_console
// Java console code goes here
```

Here is a C# console indented block

```csharp_console
// C# console code goes here
```

Here is a C console indented block

```c_console
// C console code goes here
```

Here is a C++ console indented block

```cpp_console
// C++ console code goes here
```

Here is a Shell console indented block

```shell_console
# Shell console code goes here
```

Here is a PowerShell console indented block

```powershell_console
# PowerShell console code goes here
```

Here is a VBScript console indented block

```vbscript_console
' VBScript console code goes here
```

Here is a TypeScript console indented block

```typescript_console
// TypeScript console code goes here
```

Here is a Groovy console indented block

```groovy_console
// Groovy console code goes here
```

Here is a Go console indented block

```go_console
// Go console code goes here
```

Here is an SQL console indented block

```sql_console
-- SQL console code goes here
```

Here is a VB.Net console indented block

```vbnet_console
' VB.Net console code goes here
```

Here is a Bash console indented block

```bash_console
# Bash console code goes here
```

Here is an Objective-C console indented block

```objective-c_console
// Objective-C console code goes here
```

Here is a Swift console indented block

```swift_console
// Swift console code goes here
```

Here is a Ruby on Rails console indented block

```rubyonrails_console
# Ruby on Rails console code goes here
```

Here is a PHP console indented block

```php_console
# PHP console code goes here
```
```
Here is a mlthon indented block

```mlthon
let rec print_nums (nums) =
  match nums with
    head :: tail ->
      print_num (head);
      print_nums (tail)
    | [] -> ()

let print_num (num) =
  print_int num

let main () =
  print_nums [1; 2; 3]

let%expect_test "print_nums" =
  main ();
  [%expect {| |}]
```

Here is a nimrod indented block

```nimrod
proc printNums (nums: seq[int]) =
  for num in nums:
    echo num

proc main () =
  var nums = @[1, 2, 3]
  printNums nums

main()
```

Here is a tap indented block

```tap
plan 6;

my $sum = 0;
is($sum, 0);

$sum = 10;
is($sum, 10);

$sum = 20;
is($sum, 20);

$sum = 30;
is($sum, 30);

$sum = 40;
is($sum, 40);

$sum = 50;
is($sum, 50);
```

Here is a F# indented block

```fsharp
let rec print_nums nums =
  match nums with
  | head :: tail -> print_num head; print_nums tail
  | [] -> ()

let print_num num = printf "%d" num

let main () =
  print_nums [1; 2; 3]

[<EntryPoint>]
let main args =
  main ()
  0
```

Here is a fish indented block

```console
env                                                                                                                  [john.doe@arch.local](localhost)
-bash-4.2$ echo "Hello World!"
Hello World!                                                                                                         [john.doe@arch.local](localhost)
-bash-4.2$
```

Here is a json indented block

```json
{
    "employees":[
        {"firstName":"John", "lastName":"Doe"},
        {"firstName":"Anna", "lastName":"Smith"},
        {"firstName":"Peter", "lastName":"Jones"}
    ],
    "cars": [
        {"Model":"BMW", "Price":45000},
        {"Model":"Mercedes", "Price":50000},
        {"Model":"Audi", "Price":60000}
    ]
}
```

Here is a markdown list indented block

```yaml
- Item 1

Here is another item in an ordered list

- Item 2
```

Here is a MySQL indented block

```sql
SELECT
  `name` AS 'first_name',
  `age` AS 'last_name'
FROM
  `students`
WHERE
  `age` > 18
ORDER BY
  `age` DESC
```

Here is a MLI indented block

```ocaml
let rec fib (n: int): int =
  match n with
  | 0 -> 0
  | 1 -> 1
  | _ -> fib (n - 1) + fib (n - 2)
```

Here is a VHDL indented block

```vhdl
entity full_adder is
  port (
    a, b, cin : in  std_logic;  */   poles
    s, cout : out std_logic);       */
end entity;

architecture rtl of full_adder is
begin
  s <= a xor b xor cin;         */    poles
  cout <= (a xor b) and (a xor cout);        */
end architecture;                          */  poles
```

Here is a Verilog indented block

```verilog
module full_adder (a, b, cin, s, cout)
  input  a, b, cin;
  output s, cout;

  wire s, cout;

  assign s = a xor b xor cin;       */    poles
  assign cout = (a xor b) and (a xor cout);        */
endmodule                                      */  poles
```

Here is a SVG indented block

```xml
<?xml version="1.0"

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the difference between largest and smallest value in a given list. *)
