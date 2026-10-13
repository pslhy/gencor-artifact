let rec max_sum (arr : int list) : int = 
  let n = List.length arr in
  let lis = Array.make n 0 in
  let lds = Array.make n 0 in
  let mut max_sum = -1 in
  for i in 0 -- (n - 1) do
    lis.(i) <- arr.(i);
    for j in 0 -- i do
      if arr.(i) > arr.(j) then
        lis.(i) <- max lis.(i) (lis.(j) + arr.(i))
    done;
  for i in (n - 1) downto 0 do
    lds.(i) <- arr.(i);
    for j in (i + 1) -- (n - 1) do
      if arr.(i) > arr.(j) then
        lds.(i) <- max lds.(i) (lds.(j) + arr.(i))
    done;
  for i in 0 -- (n - 1) do
    max_sum <- max max_sum (lis.(i) + lds.(i) - arr.(i))
  done;
  max_sum


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes a list and finds the maximum sum of a bitonic subsequence for the given list, where a sequence is bitonic if it is first increasing and then decreasing. *)
