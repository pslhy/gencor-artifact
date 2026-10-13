let rec is_Sum_Of_Powers_Of_Two (n : int) : bool = 
    (* base case: 
      if n = 0, return false since no non-zero 
      power of 2 can sum up to 0 *)
    if n = 0 then false else
    let half = is_Sum_Of_Powers_Of_Two (n / 2) in
    let square = is_Sum_Of_Powers_Of_Two (n / 4) in
    half = n / 2 && square = n / 4 && (n / 4) mod 2 = 0



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given number can be represented as sum of non-zero powers of 2 or not. *)
