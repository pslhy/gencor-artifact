(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
let rec comb_sort (nums : int list) : int list = 
  let shrink_factor = 1.3 in
  let rec sort nums gap shrinked =
    if gap = 1 && not shrinked then nums
    else
      let (nums', shrinked') =
        let rec swap_and_check nums gap shrinked i =
          if i + gap >= List.length nums then (nums, shrinked)
          else
            let (a, b) = List.split_at i nums in
            let (pivot, rest) = List.split_at (gap + i) rest in
            let (b', swapped) = 
              if List.hd b > List.hd rest then (b @ [List.hd b], true)
              else (b, false)
            in
            swap_and_check (a @ pivot @ b' @ rest) gap (shrinked || swapped) (i + gap)
        in swap_and_check nums gap shrinked 0
      in
      sort nums' (int_of_float (float gap /. shrink_factor)) (shrinked || shrinked')
  in sort nums (List.length nums) false

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:26: Unbound value "List.split_at" *)
(*     Hint: Did you mean "split"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec comb_sort (nums : int list) : int list = 
  let shrink_factor = 1.3 in
  let rec sort nums gap shrinked =
    if gap = 1 && not shrinked then nums
    else
      let (nums', shrinked') =
        let rec swap_and_check nums gap shrinked i =
          if i + gap >= List.length nums then (nums, shrinked)
          else
            let a = List.take i nums in
            let (_, b) = List.split_at i nums in
            let (pivot, rest) = List.split_at gap b in
            let (b', swapped) = if List.hd b > List.hd rest then (b @ [List.hd b], true) else (b, false) in
            swap_and_check (a @ pivot @ b' @ rest) gap (shrinked || swapped) (i + gap)
        in swap_and_check nums gap shrinked 0
      in sort nums' (int_of_float (float gap /. shrink_factor)) (shrinked || shrinked')
  in sort nums (List.length nums) false

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:21: Unbound value "List.take" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec comb_sort (nums : int list) : int list = 
  let shrink_factor = 1.3 in
  let rec sort nums gap shrinked =
    if gap = 1 && not shrinked then nums
    else
      let (nums', shrinked') =
        let rec swap_and_check nums gap shrinked i =
          if i + gap >= List.length nums then (nums, shrinked)
          else
            let a = List.hd (List.rev (List.tl (List.rev nums))) in
            let b = List.tl nums in
            let (pivot, rest) = List.split_at gap b in
            let (b', swapped) = if List.hd b > List.hd rest then (b @ [List.hd b], true) else (b, false) in
            swap_and_check (a :: pivot @ b' @ rest) gap (shrinked || swapped) (i + gap)
        in swap_and_check nums gap shrinked 0
      in sort nums' (int_of_float (float gap /. shrink_factor)) (shrinked || shrinked')
  in sort nums (List.length nums) false

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:33: Unbound value "List.split_at" *)
(*     Hint: Did you mean "split"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec comb_sort (nums : int list) : int list = 
  let shrink_factor = 1.3 in
  let rec sort nums gap shrinked =
    if gap = 1 && not shrinked then nums
    else
      let (nums', shrinked') =
        let rec swap_and_check nums gap shrinked i =
          if i + gap >= List.length nums then (nums, shrinked)
          else
            let (a, b) = List.split_at i nums in
            let (pivot, rest) = List.split_at gap (List.tl b) in
            let (b', swapped) = if List.hd b > List.hd rest then (b @ [List.hd b], true) else (b, false) in
            swap_and_check (a @ pivot @ b' @ rest) gap (shrinked || swapped) (i + gap)
        in swap_and_check nums gap shrinked 0
      in sort nums' (int_of_float (float gap /. shrink_factor)) (shrinked || shrinked')
  in sort nums (List.length nums) false

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:26: Unbound value "List.split_at" *)
(*     Hint: Did you mean "split"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec comb_sort (nums : int list) : int list = 
  let shrink_factor = 1.3 in
  let rec sort nums gap shrinked =
    if gap = 1 && not shrinked then nums
    else
      let (nums', shrinked') =
        let rec swap_and_check nums gap shrinked i =
          if i + gap >= List.length nums then (nums, shrinked)
          else
            let (a, b) = List.split_at i nums in
            let (pivot, rest) = List.split_at gap b in
            let (b', swapped) = if List.hd b > List.hd rest then (b @ [List.hd b], true) else (b, false) in
            swap_and_check (a @ pivot @ b' @ rest) gap (shrinked || swapped) (i + gap)
        in swap_and_check nums gap shrinked 0
      in sort nums' (int_of_float (float gap /. shrink_factor)) (shrinked || shrinked')
  in sort nums (List.length nums) false

