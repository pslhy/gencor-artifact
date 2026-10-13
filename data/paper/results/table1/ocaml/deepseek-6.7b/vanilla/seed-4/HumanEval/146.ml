let rec specialFilter (nums : int list) : int =
  match nums with
  | [] -> 0
  | h::t -> 
      let last_digit = abs (h % 10) in
      let first_digit = abs ((h / (abs(h / 10))) % 10) in
      if h > 10 && List.mem first_digit [1;3;5;7;9] && List.mem last_digit [1;3;5;7;9] then 
        1 + specialFilter t
      else 
        specialFilter t


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes a list of numbers as input and returns *)
(*     the number of elements in the list that are greater than 10 and both *)
(*     first and last digits of a number are odd (1, 3, 5, 7, 9). *)
(*     For example: *)
(*     >>> specialFilter [15; (-73); 14; (-15)] *)
(*     1 *)
(*     >>> specialFilter [33; (-2); (-3); 45; 21; 109] *)
(*     2 *)
