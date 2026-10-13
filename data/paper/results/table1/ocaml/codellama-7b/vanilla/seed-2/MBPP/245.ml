let rec max_sum (arr : int list) : int =
  match arr with
  | [] -> 0
  | [_] -> List.hd arr
  | x :: (y :: _ as rest) when x < y -> max (x :: rest) (max_sum (x :: List.tl rest))
  | x :: (y :: _ as rest) -> max (y :: rest) (max_sum (y :: List.tl rest))

let is_bitonic (arr : int list) : bool =
  let rec is_bitonic_impl (arr : int list) (acc_inc : int) (acc_dec : int) : bool =
    match arr with
    | [] -> false
    | [_] -> acc_inc + 1 >= acc_dec
    | x :: (y :: _ as rest) when x < y -> is_bitonic_impl rest (acc_inc + 1) (acc_dec + 1)
    | x :: (y :: _ as rest) -> is_bitonic_impl rest (acc_inc + 1) (acc_dec + 1)
  in
  is_bitonic_impl arr 0 0

let bitonic_subsequence (arr : int list) : int * int =
  let rec bitonic_subsequence_impl (arr : int list) (acc : int list) : int * int =
    match arr with
    | [] -> 0, 0
    | _ :: [] -> 0, 0
    | x :: (y :: _ as rest) when x < y ->
        let acc_sum = x :: rest in
        let acc_inc = 1 in
        let acc_dec = 1 in
        let rec loop (acc_sum : int list) (acc_inc : int) (acc_dec : int) (rest : int list) : int =
          match rest with
          | [] -> acc_sum, acc_inc, acc_dec
          | _ :: [] -> acc_sum, acc_inc, acc_dec
          | y :: (z :: _ as rest') when y < z ->
              let acc_sum' = y :: rest' in
              let acc_inc' = acc_inc + 1 in
              let acc_dec' = acc_dec + 1 in
              let rec loop' (acc_inc : int) (acc_dec : int) (rest' : int list) : int =
                match rest' with
                | [] -> acc_inc, acc_dec
                | _ :: [] -> acc_inc, acc_dec
                | z :: (w :: _ as rest'') when z < w ->
                    let acc_sum'' = z :: rest'' in
                    let acc_inc'' = acc_inc' + 1 in
                    let acc_dec'' = acc_dec' + 1 in
                    loop' acc_inc'' acc_dec'' rest''
                | _ -> acc_inc, acc_dec
              in
              let acc_inc', acc_dec' = loop' acc_inc' acc_dec' rest' in
              loop acc_sum' acc_inc' acc_dec' rest'
          | _ -> acc_sum, acc_inc, acc_dec
        in
        let acc_sum, acc_inc', acc_dec' = loop acc_sum acc_inc acc_dec rest in
        let acc_sum', acc_inc'', acc_dec'' =
          bitonic_subsequence_impl rest acc_sum' acc_inc' acc_dec'
        in
        max acc_sum acc_sum', max acc_inc acc_inc'', max acc_dec acc_dec''
    | _ ->
        let acc_sum = y :: rest in
        let acc_inc = 1 in
        let acc_dec = 1 in
        let rec loop (acc_sum : int list) (acc_inc : int) (acc_dec : int) (rest : int list) : int =
          match rest with
          | [] -> acc_sum, acc_inc, acc_dec
          | _ :: [] -> acc_sum, acc_inc, acc_dec
          | z :: (w :: _ as rest') when z < w ->
              let acc_sum' = z :: rest' in
              let acc_inc' = acc_inc + 1 in
              let acc_dec' = acc_dec + 1 in
              let rec loop' (acc_inc : int) (acc_dec : int) (rest' : int list) : int =
                match rest' with
                | [] -> acc_inc, acc_dec
                | _ :: [] -> acc_inc, acc_dec
                | w :: (v :: _ as rest'') when w < v ->
                    let acc_sum'' = w :: rest'' in
                    let acc_inc'' = acc_inc' + 1 in
                    let acc_dec'' = acc_dec' + 1 in
                    loop' acc_inc'' acc_dec'' rest''
                | _ -> acc_inc, acc_dec
              in
              let acc_inc', acc_dec' = loop' acc_inc' acc_dec' rest' in
              loop acc_sum' acc_inc' acc_dec' rest'
          | _ -> acc_sum, acc_inc, acc_dec
        in
        let acc_sum, acc_inc', acc_dec' = loop acc_sum acc_inc acc_dec rest in
        let acc_sum', acc_inc'', acc_dec'' =
          bitonic_subsequence_impl rest acc_sum' acc_inc' acc_dec'
        in
        max acc_sum acc_sum', max acc_inc acc_inc'', max acc_dec acc_dec''
  in
  let acc_sum, acc_inc, acc_dec = bitonic_subsequence_impl arr [] 0 0 in
  max acc_sum acc_inc, max acc_dec acc_inc


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes a list and finds the maximum sum of a bitonic subsequence for the given list, where a sequence is bitonic if it is first increasing and then decreasing. *)
