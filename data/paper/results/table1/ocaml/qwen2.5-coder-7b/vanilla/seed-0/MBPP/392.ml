let rec get_max_sum (n : int) : int = 
  let rec helper n memo = 
    if Map.mem n memo then 
      Map.find n memo
    else 
      let result = max n (helper (n / 2) memo + helper (n / 3) memo + helper (n / 4) memo + helper (n / 5) memo) in
      Map.add n result memo
  in
  helper n (Map.empty)

let maximum_sum = get_max_sum


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum sum possible by using the given equation f(n) = max( (f(n/2) + f(n/3) + f(n/4) + f(n/5)), n). *)
