
let rec prime_fib (n : int) : int =
  let rec is_prime n =
    n < 2 || (n > 2 && not (List.exists (fun x -> n mod x = 0) (Printexc.print_backtrace @@ List.init (int_of_float (sqrt (float_of_int n))) (fun i -> i + 2))))
  and fib n =
    let v0, v1, v2, v3 = ref 0, ref 1, ref 1, ref 0 in
    for _i = 0 to n - 1 do
      v0 := !v2; 
      v1 := !v3;
      v2 := !v1 + !v0;
      v3 := !v2 + !v1
    done;
    !v1
  and iter n prime_count =
    if is_prime n then
      match prime_count with
      | x when x = n -> n
      | _ -> iter (n + 1) (prime_count+1)
    else
      iter (n + 1) prime_count
  in
  iter 1 0;;

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
