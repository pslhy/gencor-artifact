let rec diff_even_odd (list1 : int list) : int = 
    match list1 with 
      head :: tail -> 
          (match tail with 
          |[] -> head 
          | head':: tail' -> 
              (match head' mod 2 with 
              | 0 -> diff_even_odd (tail') 
              | _ -> head - head')
          )
     | [] -> failwith "Empty list"
  
let test_list = [3; 5; 8; 9; 10];;
let _ = diff_even_odd test_list;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the difference of the first even and first odd number of a given list. *)
