let rec get_total_number_of_sequences (m : int) (n : int) : int = 
  if n = 0 then 1
  else 
    let rec helper (start : int) (length : int) : int = 
      if length = 0 then 1
      else 
        let rec count (current : int) : int = 
          if current > m then 0
          else count (current * 2) + helper current (length - 1) 
        in count start
    in sum_seq (List.init m (fun i -> helper (i + 1) (n - 1)))
and sum_seq (lst : int list) : int = 
  List.fold_left (+) 0 lst

let solve () : int = 
  get_total_number_of_sequences 5 2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m. *)
