let rec max_sum (arr : int list) : int = 
  let n = List.length arr in
  let lis = Array.make n 0 in
  let lds = Array.make n 0 in
  let result = ref 0 in

  (* Calculate lis values for all indices *)
  for i = 0 to n - 1 do
    lis.(i) <- arr.(i)
    for j = 0 to i - 1 do
      if arr.(i) > arr.(j) && lis.(i) < lis.(j) + arr.(i) then
        lis.(i) <- lis.(j) + arr.(i)
    done
  done;

  (* Calculate lds values for all indices *)
  for i = n - 1 downto 0 do
    lds.(i) <- arr.(i)
    for j = i + 1 to n - 1 do
      if arr.(i) > arr.(j) && lds.(i) < lds.(j) + arr.(i) then
        lds.(i) <- lds.(j) + arr.(i)
    done
    (* Update the result with the maximum sum of bitonic subsequence *)
    result := max !result (lis.(i) + lds.(i) - arr.(i))
  done;

  !result

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes a list and finds the maximum sum of a bitonic subsequence for the given list, where a sequence is bitonic if it is first increasing and then decreasing. *)
