
let rec swap_List (newList : int list) : int list = 
    match newList with 
      head :: tail -> 
      (match tail with 
          first :: last :: rev -> 
          ([last] @ rev) :: [head] @ [first])
        | _ -> raise (Failure "List must have at least two elements to perform the swap operation.")
      | _ -> raise (Failure "Invalid input list")

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to interchange the first and last element in a given list. *)
