let rec remove_kth_element (list1 : int list) (l : int) : int list = 
    match list1 with 
      head :: tail -> 
          (match l with 
          k -> 
            let rec remove_k_helper list accum k = 
                match list with 
                  [] -> accum 
                  | head::tail ->
                  if k = 0 then 
                    accum 
                  else 
                    remove_k_helper tail (head :: accum) (k - 1)
              in remove_k_helper list [] k
                  | [] -> list
                  | head :: tail -> 
                  (if k = 0 then 
                    (head :: remove_kth_element tail (l - 1))
                  else 
                    list
                  )
        )
       | [] -> []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function which takes a list and returns a list with the same elements, but the k'th element removed. *)
