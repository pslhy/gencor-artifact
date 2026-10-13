(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Input is a space-delimited string of numberals from 'zero' to 'nine'. *)
(*     Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'. *)
(*     Return the string with numbers sorted from smallest to largest *)
(*     >>> sort_numbers "three one five" *)
(*     "one three five" *)
let rec sort_numbers (numbers : string) : string =
    let split_numbers = String.split_on_spaces numbers in
    let sorted_numbers = List.sort (fun x y -> String.compare x y) split_numbers in
    String.join " " sorted_numbers

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:25: Unbound value "String.split_on_spaces" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_numbers (numbers : string) : string =
    let split_numbers = String.split_on_whitespace numbers in
    let sorted_numbers = List.sort (fun x y -> String.compare x y) split_numbers in
    String.join " " sorted_numbers

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:25: Unbound value "String.split_on_whitespace" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_numbers (numbers : string) : string =
    let split_numbers = String.split_on_string " " numbers in
    let sorted_numbers = List.sort (fun x y -> String.compare x y) split_numbers in
    String.join " " sorted_numbers

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:25: Unbound value "String.split_on_string" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_numbers (numbers : string) : string =
    let split_numbers = String.split_on_char ' ' numbers in
    let sorted_numbers = List.sort (fun x y -> String.compare x y) split_numbers in
    String.join " " sorted_numbers

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:5: Unbound value "String.join" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_numbers (numbers : string) : string =
    let split_numbers = String.split_on_char ' ' numbers in
    let sorted_numbers = List.sort (fun x y -> String.compare x y) split_numbers in
    String.concat " " sorted_numbers

