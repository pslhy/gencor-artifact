let rec bell_number (n : int) : int =
  if n <= 1 then n
  else 
    let rec bell_sum (n : int) (k : int) : int = 
      if n = 0 && k = 0 then 1
      else if n = 0 then 0 
      else if k = 0 then bell_sum (n-1) n
      else bell_sum (n-1) k + bell_sum n (k-1)
    in 
    bell_sum n (n-1)

let rec partition (n : int) : int list =
  if n = 0 then [0]
  else
    let rec loop (n : int) (k : int) : int list = 
      if n = 0 then [1] 
      else if k > n then loop n (n-1)
      else (List.hd (loop (n-k) k) + List.hd (loop n (k-1))) :: loop n (k-1)
    in 
    loop n n |> List.rev

let nth_bell_partition (n : int) : int =
  let bell_n = bell_number n in
  List.nth (partition bell_n) (bell_n - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the number of ways to partition a set of Bell numbers. *)
