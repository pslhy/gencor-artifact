
let rec prime_fib (n : int) : int =
  if n = 1 then 2
  else if n = 2 then 3
  else
    let fib_n = prime_fib (n - 1) in
    if fib_n >= 100000 then (
      let () = print_endline ("Fibonacci number greater than 100000: " ^ string_of_int fib_n) in
      1
    ) else (
      let div = ref 0 in
      for i = 2 to (fib_n / 2) do
        if fib_n mod i = 0 then
          incr div
      done;
      if !div = 0 then fib_n else prime_fib (n - 1)
    )
;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     prime_fib returns n-th number that is a Fibonacci number and it's also prime. *)
(*     >>> prime_fib 1 *)
(*     2 *)
(*     >>> prime_fib 2 *)
(*     3 *)
(*     >>> prime_fib 3 *)
(*     5 *)
(*     >>> prime_fib 4 *)
(*     13 *)
(*     >>> prime_fib 5 *)
(*     89 *)
