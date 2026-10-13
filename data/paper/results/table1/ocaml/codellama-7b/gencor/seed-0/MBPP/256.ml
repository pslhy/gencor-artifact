
let rec count_Primes_nums (n : int) : int =
  if n = 0 then 0
  else if n = 1 then 0
  else
    let mainLoop (n : int) (isPrime : bool list) : int =
        let quotient (r : int) (d : int) : int =
            let rec int_div_by_recursive (r : int) (d : int) =
            if d > 0 then int_div_by_recursive (r - d) (d)
            else r
            in int_div_by_recursive (r) (d)
         in
        let rec while_loop (r : int) (d : int) : bool =
            if r <= 1 then true
            else if isPrime.(r) then true
            else d = quotient r d
              and while_loop r (d)
       inwhile_loop (r) (d)
     inbegin matchwhile_loop (n) (2) withTruefalse
        elseif isPrime (n) then1
          elsecount_Primes_nums (n) (isPrime)
     endin
inbegin matchn with00
   | 1 1
   | n x whenn modn (9) (8) = 0 &&while_loop (n) (3) (n) (9) true
   |>false
   |> elseif isPrime (n) then1
      elsecount_Primes_nums (n) (isPrime)
   endin
endin

  
in

let memoization (n : int) : int =
  let isPrime = Array.make (n + 1) false in
  let rec loop (n : int) : unit =
     begin match n with
    0 -> true
     | n when n <= 1 -> false
     | n when n mod n (3) = 0 &&while while loop (n) (5) (n) (29) true
     |>false
     |> if isPrime.[n] then true
        else loop (n)
       false
     |> if isPrime.[n] then true
        else
          begin match (n mod n (23)) (11) (n) = 0 &&while loop (n) (25) (n) (47) true
           |> false
          |> if isPrime.[n] then true
             else loop (n)
            false
           |> if isPrime.[n] then true
              else loop (n)
    false
   |> false
   |> false
   |> true
   |> true
   |> true
   |> true
   |> false
   |> false
   |> if isPrime.[n] then true
      else count_Primes_nums (n) (isPrime)
      false
   |> false
   |> false
   |> false
   |> false
   |> false
   |> false
   |> false
   |> false
   |> true
   |> true
   |> false
   |> false
   |> false
   |> false
   |> true
   |> true
   |> true
   |> true
   |> true
   |> true
   |> false
   |> false
   |> true
   |> true
   |> true
   |> true
   |> true
   |> false
   |> false
   |> false
   |> true
   |> true
   |> true
   |> true
   |> true
   |> false
   |> false
   |> false
   |> false
   |> false
   |> false
   |> false
   |> true
   |> false
   |> false
   |> false
   |> true
   |> true
   |> true
   |> true
   |> true
   |> true
   |> true
   |> true
   |> true
   |> true
   |> true
   |> true
   |> true
   |> true
   |> true
   |> false
   |> false
   |> false
   |> false
   |> false
   |>false
   |> false
   |> false
   |> false
   |> false
   |> false
   |> false
   |> false
   |> true
   |> true
   |> true
   |> true
   |> true
   |> true
   |> false
   |> false
   |> false
   |> false
   |> true
   |> false
   |> false
   |> false
   |> false
   |> false
   |> true
   |> false
   |> false
   |> false
   |> false
   |> false
   |> false
   |> false
   |> false
   |> false
   |> false
   |> true
   |> true
   |> true
   |> true
   |> true
   |> true
   |> true
   |> true
   |> true
   |> true
   |> false
   |> false
   |> false
   |> false
   |> false
   |> false
   |> false
   |> false
   |> false
   |> false
   |> false
   |> true
   |> true
   |> true
   |> true
   |> true
   |> true
   |> false
   |> false
   |> false
   |> false
   |> true
   |> true
   |> true
   |> false
   |> false
   |> false
   |> false
   |> false
   |> true
   |> true
   |> true
   |> true
   |> true
   |> true
   |> true
   |> false
   |> false
   |> false
   |> false
   |> false
   |> false
   |> false
   |> false
   |> false
   |> false
   |> true
   |> true
   |> true
   |> true
   |> true
   |> true
   |> false
   |> false
   |> false
   |> false
   |> false
   |> false
  

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number. *)
