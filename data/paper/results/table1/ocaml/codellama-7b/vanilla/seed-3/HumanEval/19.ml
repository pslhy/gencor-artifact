let rec sort_numbers (numbers : string) : string =
  let nums =
    List.filter
      (fun num -> String.length num = 1 && String.sub num 0 1 = "0" || String.sub num 0 1 = "1" || String.sub num 0 1 = "2" || String.sub num 0 1 = "3" || String.sub num 0 1 = "4" || String.sub num 0 1 = "5" || String.sub num 0 1 = "6" || String.sub num 0 1 = "7" || String.sub num 0 1 = "8" || String.sub num 0 1 = "9")
      (String.split_on_char ' ' numbers) in
  if List.length nums <= 1 then
    numbers
  else
    let sorted_nums = List.sort compare nums in
    String.concat " " sorted_nums

and compare (n1 : string) (n2 : string) : int =
  let n1 = int_of_string n1 in
  let n2 = int_of_string n2 in
  if n1 < n2 then
    -1
  else if n1 = n2 then
    0
  else
    1

in
sort_numbers "three one five"


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
