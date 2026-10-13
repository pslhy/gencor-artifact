let rec two_unique_nums (nums : int list) : int list = 
    match nums with 
      head :: tail -> 
      (match tail with 
          first :: _ -> 
          (* do something *)
          if head = first && hedl = last then
            None 
          else 
            Some (head, first, last)
        | [] -> None) 
      | [] -> None


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to remove duplicate numbers from a given number of lists. *)
