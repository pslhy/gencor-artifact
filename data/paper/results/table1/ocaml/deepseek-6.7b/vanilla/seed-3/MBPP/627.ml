let rec find_First_Missing (array : int list) : int =
  match array with
  | [] -> failwith "Empty list"
  | [x] -> if x > 1 then 1 else x + 1
  | hd :: (tl as tail) -> 
      if hd <= 1 then find_First_Missing tail
      else if List.hd tail > hd + 1 then hd + 1
      else find_First_Missing tail

let () =
  Printf.printf "%d\n" (find_First_Missing [1; 2; 3; 5])


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the smallest missing number from a sorted list of natural numbers. *)
