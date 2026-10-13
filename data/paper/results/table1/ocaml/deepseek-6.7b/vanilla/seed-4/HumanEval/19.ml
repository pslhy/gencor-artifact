let rec sort_numbers (numbers : string) : string =
  let nums_List = ["zero";"one";"two";"three";"four";"five";"six";"seven";"eight";"nine"] in
  let words_List = String.split_on_char ' ' numbers in
  let sorted_List = List.sort (fun x y -> List.assoc x nums_List < List.assoc y nums_List) words_List in
  String.concat " " sorted_List


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
