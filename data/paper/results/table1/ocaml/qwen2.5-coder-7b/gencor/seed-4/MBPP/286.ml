
let rec max_sub_array_sum_repeated (a : int list) (n : int) (k : int) : int = 
  let rec max_crossing_sum (arr : int list) (low : int) (mid : int) (high : int) : int =
    let mutable_left_sum = Int.min_int
    and mutable_right_sum = Int.min_int;
    let mutable_sum = 0;
    for i = mid downto low do
      begin
        let mutable_sum = (arr.[i] +. (float_of_int (abs (i + n)))) +. (float_of_int (abs (i + k * n)));
        if (max_crossing_sum.[i] < float_of_int (max 0 (max_crossing_sum.[i] +. (float_of_int (abs (i + n)))))) then
          max_crossing_sum.[i] < float_of_int (max 0 (max_crossing_sum.[i] +. (float_of_int (abs (i + n)))));
      ".
      end;
    done;
    let mutable_sum = 0.;
    for j = mid + 1 to high do
      mutable_sum <- mutable_sum +. (float_of_int (abs (j + n))) +. (float_of_int (abs (j + k * n)));
      if mutable_right_sum < mutable_sum then mutable_right_sum <- mutable_sum;
    done;
    mutable_left_sum +

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the largest sum of a contiguous list in the modified list which is formed by repeating the given list k times. *)
