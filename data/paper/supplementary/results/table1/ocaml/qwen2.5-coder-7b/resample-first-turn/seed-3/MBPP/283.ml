let rec validate (n : int) : bool = 
  let rec helper (n : int) (freq : int array) : bool = 
    if n = 0 then true
    else 
      let digit = n mod 10 in
      if freq.(digit) >= digit then false
      else helper (n / 10) (Array.map (fun x -> if x = digit then x + 1 else x) freq)
  in
  helper n (Array.create 10 0)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself. *)
