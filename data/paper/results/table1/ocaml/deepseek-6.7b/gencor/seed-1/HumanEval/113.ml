
let rec odd_count (lst : string list) : string list =
  match lst with
  | [] -> []
  | hd :: tl -> (String.length (String.sub hd 0 1) - 1) :: odd_count tl
;;

let rec replace_numbers (lst : int list) : string list =
  match lst with
  | [] -> []
  | hd :: tl -> (String.make hd 'n') :: replace_numbers tl
;;

let rec format_string (lst : string list) : string list =
  match lst with
  | [] -> []
  | hd :: tl -> ("the number of odd elements " ^ hd ^ "n the str" ^ hd ^ "ng " ^ hd ^ " of the " ^ hd ^ "nput.") :: format_string tl
;;

let odd_count (lst : string list) : string list =
  let digit_counts = odd_count lst in
  let replaced_numbers = replace_numbers digit_counts in
  format_string replaced_numbers
;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list of strings, where each string consists of only digits, return a list. *)
(*     Each element i of the output should be "the number of odd elements in the *)
(*     string i of the input." where all the i's should be replaced by the number *)
(*     of odd digits in the i'th string of the input. *)
(*     >>> odd_count ["1234567"] *)
(*     ["the number of odd elements 4n the str4ng 4 of the 4nput."] *)
(*     >>> odd_count ["3"; "11111111"] *)
(*     ["the number of odd elements 1n the str1ng 1 of the 1nput."; "the number of odd elements 8n the str8ng 8 of the 8nput."] *)
