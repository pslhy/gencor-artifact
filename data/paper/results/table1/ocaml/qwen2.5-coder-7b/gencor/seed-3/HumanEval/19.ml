
let rec sort_numbers (numbers : string) : string = 
  let words = numbers |> String.split_on_char ' ' in
  let number_map = 
    [ ("zero", 0); ("one", 1); ("two", 2); ("three", 3); ("four", 4);
      ("five", 5); ("six", 6); ("seven", 7); ("eight", 8); ("nine", 9) ] in
  let int_list = 
    words |> List.map (fun s -> 
      number_map |> List.find (fun (word, _) -> word = s) |> snd) in
  let sorted_ints = List.sort compare int_list in
  let sorted_words = 
    sorted_ints |> List.map (fun i -> 
      number_map |> List.find (fun (_, num) -> num = i) |> fst) in
  sorted_words |> List.rev |> String.concat " "

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
