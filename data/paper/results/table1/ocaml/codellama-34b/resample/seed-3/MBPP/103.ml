(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the Eulerian number a(n, m). *)
let rec eulerian_num (n : int) (m : int) : int =
  if n = 0 && m = 0 then
    1
  else if n = 0 || m = 0 then
    0
  else
    let res = ref 0 in
    for i = 0 to n - 1 do
      for j = 0 to m - 1 do
        res := res + eulerian_num (i) (j)
      done
    done;
    res

