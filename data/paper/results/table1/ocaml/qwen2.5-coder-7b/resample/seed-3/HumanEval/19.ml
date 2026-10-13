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
  let words = words_list numbers in
  let sorted = List.sort compare words in
  String.concat " " sorted

and words_list (input : string) : string list =
  Str.split (Str.regexp " ") input

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:3: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_numbers (numbers : string) : string = 
  let words = words_list numbers in
  let sorted = List.sort compare words in
  String.concat " " sorted

and words_list (input : string) : string list =
  let rec split acc = function
    | "" -> List.rev acc
    | word ->
        let end_pos = try String.index word ' ' with Not_found -> String.length word in
        split ((String.sub word 0 end_pos) :: acc) (String.sub word (end_pos + 1) ((String.length word) - end_pos - 1))
  in
  split [] input

