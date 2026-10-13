let rec sort_numbers (numbers : string) : string =
  let num_list = List.sort compare ["zero"; "one"; "two"; "three"; "four"; "five"; "six"; "seven"; "eight"; "nine"] in
    String.concat " " (List.map (fun num -> List.nth num_list (List.find_idx ((=) num) num_list)) (String.split_on_char ' ' numbers))


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
