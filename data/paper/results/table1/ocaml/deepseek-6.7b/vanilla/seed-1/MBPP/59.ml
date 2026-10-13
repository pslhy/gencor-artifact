let rec is_octagonal (n : int) : int =
  let rec loop (i : int) (j : int) : int =
    if (i * (3*i - 1)) / 2 = n then i
    else if (i * (3*i - 1)) / 2 < n then loop (i+1) (j+1)
    else loop i (j-1) in
  loop (isqrt (8*n + 1)) (isqrt (24*n + 1))

and isqrt (n : int) : int =
  let rec loop (i : int) : int =
    if i*i <= n && (i+1)*(i+1) > n then i
    else if i*i < n then loop (i+1)
    else loop (i-1) in
  loop (n / 2)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth octagonal number. *)
