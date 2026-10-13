let rec odd_count (lst : string list) : string list =
  match lst with
  | [] -> []
  | hd :: tl -> string_of_int (count_odd_digits hd) :: odd_count tl 

and count_odd_digits (str : string) : int = 
  let rec helper (str : string) (count : int) : int = 
    match str with
    | "" -> count
    | hd :: tl -> if (int_of_string hd) mod 2 = 1 then helper tl (count + 1) else helper tl count
  in
  helper str 0

let solve_problem lst =
  List.map (fun str -> Str.global_replace (Str.regexp_string "i") (string_of_int (count_odd_digits str)) (format_string str)) (odd_count lst)


let format_string str =
  String.concat "" (List.map (fun c -> if c = 'i' then "i" else c) (Str.split (Str.regexp_string "") str))
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
