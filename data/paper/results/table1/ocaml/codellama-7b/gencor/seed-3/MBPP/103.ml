
let rec eulerian_num (n : int) (m : int) : int =
  if n = 1 || m = 1 then
    1
  else
    let rec comb n m =
      if n = 1 || m = 1 then
        1
      else
        comb (n - 1) (m - 1) + comb (n - 1) m
    in
    comb n m

let rec eulerian_sum n =
  if n = 1 then
    1
  else
    eulerian_sum (n - 1) + eulerian_num (n - 1) (n - 1)

let a n m = eulerian_num n m

let rec sum_eulerian n m =
  if n = 0 || m = 0 then
    0
  else
    sum_eulerian (n - 1) (m - 1) + eulerian_num n m

let main () =
  let n = read_int () in
  let m = read_int () in
  Printf.printf "a(%d, %d) = %d\n" n m (a n m);
  Printf.printf "sum of a(1..n, 1..m) = %d\n" (sum_eulerian n m)

let _ = main ()

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the Eulerian number a(n, m). *)
