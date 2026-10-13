let rec mul_even_odd (list1 : int list) : int =
  match list1 with
  | [] -> 0
  | (x :: xs) -> 
      if x mod 2 = 0 then 
        x * mul_even_odd xs
      else
        if List.exists (fun y -> y mod 2 = 0) xs then
          x * List.find (fun y -> y mod 2 = 0) xs
        else 
          0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the product of first even and odd number of a given list. *)
