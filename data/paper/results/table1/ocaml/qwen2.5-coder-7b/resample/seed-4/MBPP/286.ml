(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the largest sum of a contiguous list in the modified list which is formed by repeating the given list k times. *)
let rec max_sub_array_sum_repeated (a : int list) (n : int) (k : int) : int = 
  let rec KadaneSubArray a n = 
    let rec kadane' a n max_so_far curr_max i = 
      if i = n then max_so_far
      else 
        let new_max = max curr_max (a.(i) + curr_max) in
        let max_so_far_new = max max_so_far new_max in
        kadane' a n max_so_far_new new_max (i + 1)
    in
    kadane' a n ~-1 ~-1 0
  in
  let rec helper a n k max_sum sum i =
    if k <= 0 then max_sum
    else 
      let sum' = sum + KadaneSubArray (Array.append a a) (2 * n) in
      let max_sum' = max max_sum sum' in
      helper a n (k - 1) max_sum' sum' (i + 1)
  in
  helper (Array.of_list a) n k ~-1 0 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:28: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_sub_array_sum_repeated (a : int list) (n : int) (k : int) : int = 
  let rec KadaneSubArray a n = 
    let rec kadane' a n max_so_far curr_max i = 
      if i = n then max_so_far
      else 
        let new_max = max curr_max (List.nth a i + curr_max) in
        let max_so_far_new = max max_so_far new_max in
        kadane' a n max_so_far_new new_max (i + 1)
    in
    kadane' a n ~-1 ~-1 0
  in
  let rec helper a n k max_sum sum i =
    if k <= 0 then max_sum
    else 
      let sum' = sum + KadaneSubArray (a @ a) (2 * n) in
      let max_sum' = max max_sum sum' in
      helper a n (k - 1) max_sum' sum' (i + 1)
  in
  helper a n k ~-1 0 0

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:28: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_sub_array_sum_repeated (a : int list) (n : int) (k : int) : int = 
  let rec KadaneSubArray a n = 
    let rec kadane' a n max_so_far curr_max i = 
      if i = n then max_so_far
      else 
        let new_max = max curr_max (List.nth a i + curr_max) in
        let max_so_far_new = max max_so_far new_max in
        kadane' a n max_so_far_new new_max (i + 1)
    in
    kadane' a n ~-1 ~-1 0
  in
  let rec helper a n k max_sum sum i =
    if k <= 0 then max_sum
    else 
      let sum' = sum + KadaneSubArray (a @ a) (2 * n) in
      let max_sum' = max max_sum sum' in
      helper a n (k - 1) max_sum' sum' (i + 1)
  in
  helper a n k ~-1 0 0

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:28: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_sub_array_sum_repeated (a : int list) (n : int) (k : int) : int = 
  let rec KadaneSubArray a n = 
    let rec kadane' a n max_so_far curr_max i = 
      if i = n then max_so_far
      else 
        let new_max = max curr_max (a.(i) + curr_max) in
        let max_so_far_new = max max_so_far new_max in
        kadane' a n max_so_far_new new_max (i + 1)
    in
    kadane' a n ~-1 ~-1 0
  in
  let rec helper a n k max_sum sum i =
    if k <= 0 then max_sum
    else 
      let sum' = sum + KadaneSubArray (Array.append (Array.of_list a) (Array.of_list a)) (2 * n) in
      let max_sum' = max max_sum sum' in
      helper a n (k - 1) max_sum' sum' (i + 1)
  in
  helper (Array.of_list a) n k ~-1 0 0

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:28: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_sub_array_sum_repeated (a : int list) (n : int) (k : int) : int = 
  let rec kadane' a n max_so_far curr_max i = 
    if i = n then max_so_far
    else 
      let new_max = max curr_max (List.nth a i + curr_max) in
      let max_so_far' = max max_so_far new_max in
      kadane' a n max_so_far' new_max (i + 1)
  in
  let rec helper a n k max_sum sum i =
    if k <= 0 then max_sum
    else 
      let sum' = sum + kadane' (a @ a) (2 * n) ~-1 ~-1 0 in
      let max_sum' = max max_sum sum' in
      helper a n (k - 1) max_sum' sum' (i + 1)
  in
  helper a n k ~-1 0 0

