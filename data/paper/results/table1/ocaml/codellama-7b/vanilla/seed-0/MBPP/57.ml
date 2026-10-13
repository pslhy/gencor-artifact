let rec find_Max_Num (arr : int list) : int =
  match arr with
  | [] -> 0
  | h :: t ->
    let rec helper (arr : int list) (curr_max : int) : int =
      match arr with
      | [] -> curr_max
      | h :: t ->
        let next_max = if h > curr_max then h else curr_max in
        helper t next_max
    in
    helper t h


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the largest number that can be formed with the given list of digits. *)
