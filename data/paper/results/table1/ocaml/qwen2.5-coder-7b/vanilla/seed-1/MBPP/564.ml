let rec count_Pairs (arr : int list) (n : int) : int = 
  if n <= 1 then 0
  else 
    let rec count (i : int) (j : int) (count : int) : int = 
      if i >= n then count
      else 
        if j >= n then count (i + 1) (i + 2) count
        else 
          if arr.(i) <> arr.(j) then count i (j + 1) (count + 1)
          else count i (j + 1) count
    in count 0 1 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function which takes a list of integers and counts the number of possible unordered pairs where both elements are unequal. *)
