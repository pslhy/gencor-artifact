let rec find_Min_Length (lst : int list list) : int = 
  match lst with
  | [] -> 0
  | h::t -> let min_len_head = List.length h in
            let min_len_tail = find_Min_Length t in
            if min_len_head < min_len_tail then min_len_head
            else min_len_tail


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the length of the smallest list in a list of lists. *)
