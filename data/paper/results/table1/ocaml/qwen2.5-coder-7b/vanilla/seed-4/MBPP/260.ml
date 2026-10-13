let rec newman_prime (n : int) : int = 
  let rec calculate (num : int) (p : int) : int = 
    if num = n then p 
    else 
      let rec sum_factors (i : int) (acc : int) : int = 
        if i * i > num then acc 
        else 
          if num mod i = 0 then 
            sum_factors (i + 1) (acc + i + if i <> num / i then num / i else 0) 
          else sum_factors (i + 1) acc 
      in 
      calculate (num + 1) (if sum_factors 2 1 <> num - 1 then p else p + 1)
  in 
  calculate 1 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth newman–shanks–williams prime number. *)
