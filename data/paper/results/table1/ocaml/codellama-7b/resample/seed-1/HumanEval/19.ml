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
    let sorted_numbers =
        let compare (a : string) (b : string) =
            let a_int = int_of_string a in
            let b_int = int_of_string b in
            compare a_int b_int
        in
        List.sort compare (Str.split (Str.regexp_string " ") numbers)
    in
    String.concat " " sorted_numbers

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:28: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_numbers (numbers : string) : string =
    let sorted_numbers =
        let compare (a : string) (b : string) =
            let a_int = int_of_string a in
            let b_int = int_of_string b in
            compare a_int b_int
        in
        List.sort compare (Str.split (Str.regexp_string " ") numbers)
    in
    String.concat " " sorted_numbers

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:28: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_numbers (numbers : string) : string =
    let sorted_numbers =
        let compare (a : int) (b : int) =
            compare a b
        in
        String.split_on_char ' ' numbers
    in
    List.sort compare sorted_numbers

