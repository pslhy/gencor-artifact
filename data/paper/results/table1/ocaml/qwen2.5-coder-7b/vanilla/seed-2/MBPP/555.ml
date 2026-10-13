let rec difference (n : int) : int = 
    let sum_of_cubes n = List.fold_left (fun acc x -> acc + (x * x * x)) 0 (List.init n (fun x -> x + 1)) in
    let sum_of_natural_numbers n = List.fold_left (fun acc x -> acc + x) 0 (List.init n (fun x -> x + 1)) in
    sum_of_cubes n - sum_of_natural_numbers n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the difference between the sum of cubes of the first n natural numbers and the sum of the first n natural numbers. *)
