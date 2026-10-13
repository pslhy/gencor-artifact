
let rec get_max_sum (n : int) : int = 
  let rec helper (n : int) (memo : int array) : int = 
    if n <= 1 then n
    else if memo.(n) <> 0 then memo.(n)
    else let current = max n (helper (n / 2) memo + helper (n / 3) memo + helper (n / 4) memo + helper (n / 5) memo) in
          memo.(n) <- current;
          current
  in 
  let memo = Array.create_float (n + 1) 0.0 in
  helper n memo int_of_float

(* Example usage: *)
let () = 
  let result = get_max_sum 12 in 
  Printf.printf "The maximum sum is: %d\n" result

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum sum possible by using the given equation f(n) = max( (f(n/2) + f(n/3) + f(n/4) + f(n/5)), n). *)
