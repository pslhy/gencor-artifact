let rec find_Odd_Pair (a : int list) (n : int) : int = 
  if n <= 1 then 0
  else 
    let rec xorOdd (i : int) (count : int) : int =
      if i = n then count
      else
        let rec xor_j (j : int) (count : int) : int =
          if j = n then count
          else 
            if (List.nth a (i-1) lxor List.nth a (j-1)) land 1 = 1 then xor_j (j+1) (count+1)
            else xor_j (j+1) count
        in xorOdd (i+1) (xor_j (i+1) count)
    in xorOdd 2 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of pairs whose xor value is odd. *)
