let rec get_max_sum (n : int) : int = 
  let rec calculate (num : int) (cache : int array) : int = 
    if num <= 1 then num
    else 
      if cache.(num) != 0 then cache.(num)
      else 
        let max_val = num in
        let sum = 
          calculate (num / 2) cache
          + calculate (num / 3) cache
          + calculate (num / 4) cache
          + calculate (num / 5) cache 
        in
        let result = max max_val sum in
        cache.(num) <- result;
        result 
  in
  let cache_arr = Array.make (n + 1) 0 in
  calculate n cache_arr


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum sum possible by using the given equation f(n) = max( (f(n/2) + f(n/3) + f(n/4) + f(n/5)), n). *)
