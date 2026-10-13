(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the smallest missing number from a sorted list of natural numbers. *)
let rec find_First_Missing (array : int list) : int = 
    (* First, we check if the head and the tail of the list exist *)
    match array with 
      head :: tial -> 
        
         (* If the current head element is equal to the index of head plus 1, 
        then we recurse to the next element of the recursion *)
         if head = index + 1 
          then find_First_Missing tial 
      
        (* If the current head element is not equal to the index of head plus 1, 
        then we return the index of head plus 1 *)
           else index + 1
      | _ -> 0

let find_smallest_missing (array : int list) : int = find_First_Missing array


(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:20: Unbound value "index" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_First_Missing (array : int list) : int = 
    match array with 
      head :: tial -> 
         if head = head + 1 
          then find_First_Missing tial 
          else head + 1
      | [] -> 0

let find_smallest_missing (array : int list) : int = find_First_Missing array

