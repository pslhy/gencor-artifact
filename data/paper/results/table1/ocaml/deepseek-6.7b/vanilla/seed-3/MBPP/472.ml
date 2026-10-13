let rec check_Consecutive (l : int list) : bool =
  match l with
  | [] -> true
  | x :: [] -> true
  | x :: y :: tl -> if y = x + 1 then check_Consecutive (y :: tl) else false

(* Tests: 

   # check_Consecutive [1;2;3];;
   - : bool = true
   # check_Consecutive [1;3;2];;
   - : bool = false
   # check_Consecutive [3;1];;
   - : bool = true
   # check_Consecutive [1];;
   - : bool = true
   # check_Consecutive [];;
   - : bool = true
*)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given list contains consecutive numbers or not. *)
