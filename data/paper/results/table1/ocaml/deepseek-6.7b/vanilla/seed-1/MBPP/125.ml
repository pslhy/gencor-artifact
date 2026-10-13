let rec find_length (string : string) : int =
  match string with
  | "" -> 0
  | _ -> if string.[0] = '1' then 1 + find_length (String.sub string 1 (String.length string - 1)) else find_length (String.sub string 1 (String.length string - 1))
  
let calc_diff (string : string) : int =
  let ones_arr = ref [] in
  let zeros_arr = ref [] in
  let count_ones = ref 0 in
  let count_zeros = ref 0 in
  for i = 0 to String.length string - 1 do
    if string.[i] = '1' then
      begin
        count_ones := !count_ones + 1;
        zeros_arr := !count_zeros :: !zeros_arr;
        count_zeros := 0
      end
    else
      begin
        count_zeros := !count_zeros + 1;
        ones_arr := !count_ones :: !ones_arr;
        count_ones := 0
      end
  done;
  zeros_arr := !count_zeros :: !zeros_arr;
  ones_arr := !count_ones :: !ones_arr;
  let ones_arr = List.rev !ones_arr in
  let zeros_arr = List.rev !zeros_arr in
  let max_index = ref 0 in
  let max_diff = ref 0 in
  for i = 0 to List.length ones_arr - 1 do
    if (ones_arr.[i] - zeros_arr.[i]) > !max_diff then
      begin
        max_diff := ones_arr.[i] - zeros_arr.[i];
        max_index := i
      end
  done;
  List.nth ones_arr !max_index

let max_binary_diff (string : string) : int =
  calc_diff (String.sub string 0 (find_length string))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string. *)
