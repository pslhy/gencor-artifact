let rec bell_number (n : int) : int = 
  if n <= 0 then 1
  else
    let rec sum (k : int) : int = 
      if k > n then 0
      else (sum_bitmask k) * bell_number (n - k) + sum (k + 1)
    and sum_bitmask (k : int) : int = 
      let rec bitcount (n : int) (count : int) : int = 
        if n = 0 then count
        else if n land 1 = 1 then bitcount (n lsr 1) (count + 1)
        else bitcount (n lsr 1) count
      in
      bitcount k 0
    in
    sum 1

let number_of_partitions (n : int) : int =
  bell_number n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the number of ways to partition a set of Bell numbers. *)
