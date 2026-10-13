(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a positive integer n and finds the sum of even index binomial coefficients. *)
let rec even_binomial_Coeff_Sum (n : int) : int = 
  if n = 0 then 1
  else 
    let C = (Array.init (n+1) (fun k -> Int.fdiv (Int.factorial n) ((Int.factorial k) * (Int.factorial (n-k))))) in
    Array.fold_left (fun acc i -> if i mod 2 = 0 then acc + C.(i) else acc) 0 C

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:41: Unbound value "Int.fdiv" *)
(*     Hint: Did you mean "div"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec even_binomial_Coeff_Sum (n : int) : int = 
  if n = 0 then 1
  else 
    let C = (Array.init (n+1) (fun k -> Int.div (Int.factorial n) ((Int.factorial k) * (Int.factorial (n-k))))) in
    Array.fold_left (fun acc i -> if i mod 2 = 0 then acc + C.(i) else acc) 0 C

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:50: Unbound value "Int.factorial" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec even_binomial_Coeff_Sum (n : int) : int = 
  if n = 0 then 1
  else 
    let rec factorial x = if x <= 1 then 1 else x * factorial (x - 1) in
    let C = (Array.init (n+1) (fun k -> factorial n / (factorial k * factorial (n-k)))) in
    Array.fold_left (fun acc i -> if i mod 2 = 0 then acc + C.(i) else acc) 0 C

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:9: Unbound constructor "C" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec even_binomial_Coeff_Sum (n : int) : int = 
  if n = 0 then 1
  else 
    let rec factorial x = if x <= 1 then 1 else x * factorial (x - 1) in
    let C = (Array.init (n+1) (fun k -> factorial n / (factorial k * factorial (n-k)))) in
    Array.fold_left (fun acc i -> if i mod 2 = 0 then acc + C.(i) else acc) 0 C

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:9: Unbound constructor "C" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec even_binomial_Coeff_Sum (n : int) : int = 
  if n = 0 then 1
  else 
    let rec factorial x = if x <= 1 then 1 else x * factorial (x - 1) in
    let C = (Array.init (n+1) (fun k -> factorial n / (factorial k * factorial (n-k)))) in
    Array.fold_left (fun acc i -> if i mod 2 = 0 then acc + C.(i) else acc) 0 C

