let rec right_insertion (a : int list) (x : int) : int =
  match a with
  | [] -> raise Not_found
  | hd :: tl -> if hd > x then 0
                 else if List.for_all (fun e -> e <= x) a then List.length a
                 else 1 + right_insertion tl x


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to locate the right insertion point for a specified value in sorted order. *)
