let rec odd_count (lst : string list) : string list =
  match lst with
  | [] -> []
  | h::t -> let odd_count = String.length h - (String.length (String.replace_char h '0')) in
            let new_str = "the number of odd elements " ^ (string_of_int odd_count) ^ "n the str" ^ (string_of_int odd_count) ^ "ng " ^ (string_of_int odd_count) ^ " of the " ^ (string_of_int odd_count) ^ "nput." in
            new_str::(odd_count t)


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
