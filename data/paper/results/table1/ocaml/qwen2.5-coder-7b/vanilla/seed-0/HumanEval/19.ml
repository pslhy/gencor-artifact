let rec sort_numbers (numbers : string) : string = 
  let number_map = 
    [ "zero"; "one"; "two"; "three"; "four"; "five"; "six"; "seven"; "eight"; "nine" ] 
    |> List.mapi (fun i s -> (s, i)) 
    |> List.assoc 
  in
  numbers 
  |> String.split_on_char ' ' 
  |> List.map (fun s -> number_map s) 
  |> List.sort compare 
  |> List.map string_of_int 
  |> String.concat " "


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
