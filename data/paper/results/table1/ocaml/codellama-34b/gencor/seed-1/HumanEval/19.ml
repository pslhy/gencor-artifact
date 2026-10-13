
let rec sort_numbers (numbers : string) : string =
    let split_numbers = String.split_on_char ' ' numbers in
    let numbers_list = List.map int_of_string split_numbers in
    let sorted_numbers_list = List.sort compare numbers_list in
    String.concat " " (List.map string_of_int sorted_numbers_list)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Input is a space-delimited string of numberals from 'zero' to 'nine'. *)
(*     Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'. *)
(*     Return the string with numbers sorted from smallest to largest *)
(*     >>> sort_numbers "three one five" *)
(*     "one three five" *)
