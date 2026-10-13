let rec find_First_Missing (array : int list) : int = 
  let rec binary_search left right = 
    if left > right then left 
    else 
      let mid = (left + right) / 2 in 
      if List.nth array mid = mid then 
        binary_search (mid + 1) right 
      else 
        binary_search left (mid - 1) 
  in 
  binary_search 0 ((List.length array) - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the smallest missing number from a sorted list of natural numbers. *)
