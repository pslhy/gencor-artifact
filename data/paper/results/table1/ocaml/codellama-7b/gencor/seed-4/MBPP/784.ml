
let rec mul_even_odd (list1 : int list) : int = 
    match list1 with 
      head :: tail -> 
          (match (List.exists (fun x -> x mod 2 = 0) list1) with 
              true -> List.fold_left ( * ) head list1 
              | _ ->
                  (match List.exists (fun x -> x mod 2 != 0) list1 with 
                      true -> List.fold_left ( * ) head list1
                      | _ -> 0))
                | _ -> 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the product of first even and odd number of a given list. *)
