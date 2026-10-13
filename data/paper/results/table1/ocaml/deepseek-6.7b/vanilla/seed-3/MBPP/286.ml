let rec max_sub_array_sum_repeated (a : int list) (n : int) (k : int) : int =
  let b = List.concat (List.init k (fun _ -> a)) in
  let len = List.length b in
  let prefix_sum = Array.make (len + 1) 0 in
  let max_sum = ref min_int in
  let _ =
    for i = 1 to len do
      prefix_sum.(i) <- prefix_sum.(i - 1) + b.(i - 1);
      let best = ref prefix_sum.(i) in
      for prev = 0 to i - 1 do
        if prefix_sum.(i) - prefix_sum.(prev) > !best then
          best := prefix_sum.(i) - prefix_sum.(prev);
        if !best > !max_sum then
          max_sum := !best;
      done
    done
  in
  if !max_sum < 0 then 0 else !max_sum


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the largest sum of a contiguous list in the modified list which is formed by repeating the given list k times. *)
