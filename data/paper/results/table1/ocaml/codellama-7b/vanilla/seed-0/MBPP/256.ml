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
              if d = quotient r d then
                if d < minPrime.(d) then
                  isPrime.(r) <- false;
                  isPrime.(d) <- false;
                  false
                else
                  while_loop (r - d) (d)
              else
                while_loop (r - d) (d)
         in
         if while_loop (minPrime.(n)) (minPrime.(n)) then
           if isPrime.(n) then
             count
           else
             count - 1
           else
             false
  in
  let minPrime : int list = [2; 3; 5; 7; 11; 13; 17; 19; 23; 29; 31; 37; 41; 43; 47; 53; 59; 61; 67; 71; 73; 79; 83; 89; 97]
  
  let rec while_loop (n : int) (isPrime : bool list) : bool =
    if n <= 1 then true
    else if isPrime.(n) then true
    else quotient n (minPrime.(n))
      if quotient (n) (minPrime.(n)) then
        if minPrime.(n) <= minPrime.(quotient n (minPrime.(n))) then
          if minPrime.(n) >= minPrime.(quotient (n) (minPrime.(n))) then
            false
          else
            isPrime.(n) <- false;
            isPrime.(quotient (n) (minPrime.(n))) <- false;
            false
        else
          if minPrime.(n) >= minPrime.(quotient (n) (minPrime.(n))) then
            isPrime.(n) <- false;
            isPrime.(quotient (n) (minPrime.(n))) <- false;
            false
          else
            isPrime.(n) <- false;
            isPrime.(quotient (n) (minPrime.(n))) <- false;
            false
      else
        isPrime.(n) <- false;
        isPrime.(quotient (n) (minPrime.(n))) <- false;
        false
   in
   if while_loop (n) (isPrime) then true else false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number. *)
