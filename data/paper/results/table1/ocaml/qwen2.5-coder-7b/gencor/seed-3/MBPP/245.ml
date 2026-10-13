
let rec max_sum (arr : int list) : int = 
  let n = List.length arr in
  if n = 0 then 0
  else
    let increasing = Array.make n 0 in
    let decreasing = Array.make n 0 in
    let _ = 
      for i = 0 to n - 1 do
        increasing.(i) <- arr.(i);
        for j = 0 to i - 1 do
          if arr.(i) > arr.(j) then
            increasing.(i) <- max increasing.(i) (increasing.(j) + arr.(i))
        done
      done
    in
    let _ = 
      for i = n - 1 downto 0 do
        decreasing.(i) <- arr.(i);
        for j = n - 1 downto i + 1 do
          if arr.(i) > arr.(j) then
            decreasing.(i) <- max decreasing.(i) (decreasing.(j) + arr.(i))
        done
      done
    in
    let rec max_bitonic_sum i = 
      if i = n then 0
      else max (increasing.(i) + decreasing.(i) - arr.(i)) (max_bitonic_sum (i + 1))
    in
    max_bitonic_sum 0



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes a list and finds the maximum sum of a bitonic subsequence for the given list, where a sequence is bitonic if it is first increasing and then decreasing. *)
