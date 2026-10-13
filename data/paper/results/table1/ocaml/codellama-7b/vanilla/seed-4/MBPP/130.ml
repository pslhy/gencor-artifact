let rec max_occurrences (nums : int list) : int = 
    match nums with 
      head :: tail -> 
          (match tail with 
          |[] -> head 
          | xs -> 
              if List.length (List.filter (fun x -> x = head) xs) > List.length (List.filter (fun x -> x = head) tail) 
              then max_occurrences (xs) else max_occurrences (tail) 
          ) 
[]-> failwith "The list has nothing !"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the item with maximum frequency in a given list. *)
